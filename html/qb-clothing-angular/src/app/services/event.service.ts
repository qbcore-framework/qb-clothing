import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';
import { UtilityService } from './utility.service';
import { CommunicationService } from './communication.service';
import { ClothingService } from './clothing.service';

@Injectable({
  providedIn: 'root'
})
export class EventService {
  selectedTab: string = ".characterTab";
  lastCategory: string = "character";
  selectedCam: any = null;
  hasTracker: boolean = false;
  canChange: boolean = true;
  translations: any = {};
  clothingCategorys: any[] = [];
  changingCat: any;
    private eventSubject = new Subject<any>();
  utilityService: UtilityService;
  communicationService: CommunicationService;
  clothingService: ClothingService;

  constructor(utilityService: UtilityService, communicationService: CommunicationService, clothingService: ClothingService) {
    this.utilityService = utilityService;
    this.communicationService = communicationService;
    this.clothingService = clothingService;
    this.initializeEventListeners();
  }

  initializeEventListeners() {
    document.addEventListener('click', (e: Event) => {
      const target = e.target as HTMLElement;
      if (target.classList.contains('clothing-menu-header-btn')) {
        this.onHeaderBtnClick(e);
      } else if (target.classList.contains('clothing-menu-option-item-right')) {
        this.onOptionItemRightClick(e);
      } else if (target.classList.contains('clothing-menu-option-item-left')) {
        this.onOptionItemLeftClick(e);
      }
    });

    this.eventSubject.subscribe(event => {
        switch (event.type) {
          case 'input':
            this.onOptionItemSliderInput(event.payload);
            break;
          case 'change':
            this.onItemNumberChange(event.payload);
            break;
          case 'click':
            this.handleClickEvent(event.payload);
            break;
          case 'keydown':
            this.onKeyDown(event.payload);
            break;
        }
      });
  }

  onHeaderBtnClick(e: Event) {
    const target = e.currentTarget as HTMLElement;
    const category = target.dataset['category'];
    const selectedTabElement = document.querySelector(this.selectedTab);
    if (selectedTabElement) {
      selectedTabElement.classList.remove("selected");
    }
    target.classList.add("selected");
    const lastCategoryContainer = document.querySelector(`.clothing-menu-${this.lastCategory}-container`);
    if (lastCategoryContainer) {
      lastCategoryContainer.setAttribute("style", "display: none;");
    }
    this.lastCategory = category!;
    this.selectedTab = `.${target.classList[0]}`; // Update selectedTab to the new selector string
    const categoryContainer = document.querySelector(`.clothing-menu-${category}-container`);
    if (categoryContainer) {
      categoryContainer.setAttribute("style", "display: block;");
    }
  }



  onOptionItemRightClick(e: Event) {
    e.preventDefault();
    const target = e.currentTarget as HTMLElement;
    const clothingCategory = (target.closest('.clothing-menu-option') as HTMLElement)?.dataset['type'];
    const buttonType = target.dataset['type'];
    const inputElem = (target.closest('.clothing-menu-option-item') as HTMLElement)?.querySelector('input') as HTMLInputElement;
    if (inputElem) {
      const inputVal = inputElem.value;
      const newValue = parseFloat(inputVal) + 1;

      if (this.canChange && clothingCategory != null) {
        if (this.hasTracker && clothingCategory == "accessory") {
          fetch('https://qb-clothing/TrackerError', { method: 'POST' });
          return;
        } else {
          if (clothingCategory == "model") {
            inputElem.value = newValue.toString();
            fetch('https://qb-clothing/setCurrentPed', {
              method: 'POST',
              body: JSON.stringify({ ped: newValue })
            }).then(response => response.json()).then(model => {
              const currentModelElement = document.getElementById("current-model");
              if (currentModelElement) {
                currentModelElement.innerHTML = `<p>${model}</p>`;
              }
            });
            this.canChange = true;
            this.clothingService.ResetValues();
          } else if (clothingCategory == "hair") {
            inputElem.value = newValue.toString();
            fetch('https://qb-clothing/updateSkin', {
              method: 'POST',
              body: JSON.stringify({
                clothingType: clothingCategory,
                articleNumber: newValue,
                type: buttonType,
              })
            });
            if (buttonType == "item") {
              if (clothingCategory) {
                this.clothingService.ResetItemTexture(target, clothingCategory);
              }
            }
          } else {
            if (buttonType == "item") {
              const buttonMax = (target.closest('.clothing-menu-option-item')?.querySelector('[data-headertype="item-header"]')as HTMLElement)?.dataset['maxItem'];
              if (clothingCategory == "accessory" && newValue == 13) {
                inputElem.value = "14";
                fetch('https://qb-clothing/updateSkin', {
                  method: 'POST',
                  body: JSON.stringify({
                    clothingType: clothingCategory,
                    articleNumber: 14,
                    type: buttonType,
                  })
                });
              } else {
                if (buttonMax && newValue <= parseInt(buttonMax)) {
                  inputElem.value = newValue.toString();
                  fetch('https://qb-clothing/updateSkin', {
                    method: 'POST',
                    body: JSON.stringify({
                      clothingType: clothingCategory,
                      articleNumber: newValue,
                      type: buttonType,
                    })
                  });
                }
              }
              if (clothingCategory) {
                this.clothingService.ResetItemTexture(target, clothingCategory);
              }
            } else {
              const buttonMax = (target.closest('.clothing-menu-option-item')?.querySelector('[data-headertype="texture-header"]') as HTMLElement)?.dataset['maxTexture'];
              if (buttonMax && newValue <= parseInt(buttonMax)) {
                inputElem.value = newValue.toString();
                fetch('https://qb-clothing/updateSkin', {
                  method: 'POST',
                  body: JSON.stringify({
                    clothingType: clothingCategory,
                    articleNumber: newValue,
                    type: buttonType,
                  })
                });
              }
            }
          }
        }
      }
    }
  }

  onOptionItemLeftClick(e: Event) {
    e.preventDefault();
    const target = e.currentTarget as HTMLElement;
    const clothingCategory = (target.closest('.clothing-menu-option') as HTMLElement)?.dataset['type'] as string;
    const buttonType = target.dataset['type'];
    const inputElem = (target.closest('.clothing-menu-option-item') as HTMLElement)?.querySelector('input') as HTMLInputElement;
    if (inputElem) {
      const inputVal = inputElem.value;
      const newValue = parseFloat(inputVal) - 1;

      if (this.canChange && clothingCategory != null) {
        if (this.hasTracker && clothingCategory == "accessory") {
          fetch('https://qb-clothing/TrackerError', { method: 'POST' });
          return;
        } else {
          if (clothingCategory == "model") {
            if (newValue != 0) {
              inputElem.value = newValue.toString();
              fetch('https://qb-clothing/setCurrentPed', {
                method: 'POST',
                body: JSON.stringify({ ped: newValue })
              }).then(response => response.json()).then(model => {
                const currentModelElement = document.getElementById("current-model");
                if (currentModelElement) {
                  currentModelElement.innerHTML = `<p>${model}</p>`;
                }
              });
              this.canChange = true;
              this.clothingService.ResetValues();
            }
          } else {
            if (buttonType == "item") {
              if (newValue >= this.clothingCategorys[clothingCategory as keyof typeof this.clothingCategorys].defaultItem) {
                if (clothingCategory == "accessory" && newValue == 13) {
                  inputElem.value = "12";
                  fetch('https://qb-clothing/updateSkin', {
                    method: 'POST',
                    body: JSON.stringify({
                      clothingType: clothingCategory,
                      articleNumber: 12,
                      type: buttonType,
                    })
                  });
                } else {
                  inputElem.value = newValue.toString();
                  fetch('https://qb-clothing/updateSkin', {
                    method: 'POST',
                    body: JSON.stringify({
                      clothingType: clothingCategory,
                      articleNumber: newValue,
                      type: buttonType,
                    })
                  });
                }
              }
              this.clothingService.ResetItemTexture(target, clothingCategory);
            } else {
              if (newValue >= this.clothingCategorys[clothingCategory as keyof typeof this.clothingCategorys].defaultTexture) {
                if (clothingCategory == "accessory" && newValue == 13) {
                  inputElem.value = "12";
                  fetch('https://qb-clothing/updateSkin', {
                    method: 'POST',
                    body: JSON.stringify({
                      clothingType: clothingCategory,
                      articleNumber: 12,
                      type: buttonType,
                    })
                  });
                } else {
                  inputElem.value = newValue.toString();
                  fetch('https://qb-clothing/updateSkin', {
                    method: 'POST',
                    body: JSON.stringify({
                      clothingType: clothingCategory,
                      articleNumber: newValue,
                      type: buttonType,
                    })
                  });
                }
              }
            }
          }
        }
      }
    }
  }



  emitEvent(eventType: string, payload: any) {
    this.eventSubject.next({ type: eventType, payload });
  }

  handleClickEvent(event: any) {
    switch (event.type) {
        case 'input':
          this.onOptionItemSliderInput(event.payload);
          break;
        case 'change':
          this.onItemNumberChange(event.payload);
          break;
        case 'click':
          this.handleClickEvent(event.payload);
          break;
        case 'keydown':
          this.onKeyDown(event.payload);
          break;
        case 'save-menu':
            this.onSaveMenuClick(event);
            break;
        case 'cancel-menu':
            this.onCancelMenuClick(event);
            break;
        case 'save-outfit':
            this.onSaveOutfitClick(event);
            break;
        case 'save-outfit-save':
            this.onSaveOutfitSaveClick(event);
            break;
        case 'cancel-outfit-save':
            this.onCancelOutfitSaveClick(event);
            break;
        default:
            if (event.target.classList.contains('clothing-menu-header-camera-btn')) {
            this.onHeaderCameraBtnClick(event);
            } else if (event.target.classList.contains('change-camera-button')) {
            this.onChangeCameraButtonClick(event);
            } else if (event.target.classList.contains('clothing-menu-outfit-option-button')) {
            this.onOutfitOptionButtonClick(event);
            } else if (event.target.classList.contains('clothing-menu-myOutfit-option-button')) {
            this.onMyOutfitOptionButtonClick(event);
            } else if (event.target.classList.contains('clothing-menu-myOutfit-option-button-remove')) {
            this.onMyOutfitOptionButtonRemoveClick(event);
            }
            break;
        }
  }
    onMyOutfitOptionButtonRemoveClick(event: any) {
        throw new Error('Method not implemented.');
    }
    onMyOutfitOptionButtonClick(event: any) {
        throw new Error('Method not implemented.');
    }
    onOutfitOptionButtonClick(event: any) {
        throw new Error('Method not implemented.');
    }

  onOptionItemSliderInput(event: any) {
    const clothingCategory = event.currentTarget.parentElement.parentElement.dataset.type;
    const buttonType = event.currentTarget.dataset.type;
    const inputElem = event.currentTarget.parentElement.querySelector('input');
    const inputVal = inputElem.value;
    const newValue = parseFloat(inputVal);

    if (this.canChange) {
      if (this.hasTracker && clothingCategory == "accessory") {
        this.communicationService.postMessage('TrackerError');
        return;
      } else {
        if (clothingCategory == "model") {
          if (newValue != 0) {
            inputElem.value = newValue.toString();
            this.communicationService.postMessage('setCurrentPed', { ped: newValue }, (model: any) => {
              document.getElementById("current-model")!.innerHTML = `<p>${model}</p>`;
            });
            this.canChange = true;
            this.clothingService.ResetValues();
          }
        } else {
          if (buttonType == "item") {
            if (newValue >= this.clothingCategorys[clothingCategory].defaultItem) {
              if (clothingCategory == "accessory" && newValue == 13) {
                inputElem.value = '12';
                this.communicationService.postMessage('updateSkin', {
                  clothingType: clothingCategory,
                  articleNumber: 12,
                  type: buttonType,
                });
              } else {
                inputElem.value = newValue.toString();
                this.communicationService.postMessage('updateSkin', {
                  clothingType: clothingCategory,
                  articleNumber: newValue,
                  type: buttonType,
                });
              }
            }
            this.clothingService.ResetItemTexture(event.currentTarget, clothingCategory);
          } else {
            if (newValue >= this.clothingCategorys[clothingCategory].defaultTexture) {
              if (clothingCategory == "accessory" && newValue == 13) {
                inputElem.value = '12';
                this.communicationService.postMessage('updateSkin', {
                  clothingType: clothingCategory,
                  articleNumber: 12,
                  type: buttonType,
                });
              } else {
                inputElem.value = newValue.toString();
                this.communicationService.postMessage('updateSkin', {
                  clothingType: clothingCategory,
                  articleNumber: newValue,
                  type: buttonType,
                });
              }
            }
          }
        }
      }
    }
  }

  ChangeUp() {
    const clothingCategory = this.changingCat.parentElement.parentElement.dataset.type;
    const buttonType = this.changingCat.dataset.type;
    const inputVal = parseFloat(this.changingCat.value);

    if (clothingCategory == "accessory" && inputVal + 1 == 13) {
      this.changingCat.value = (14 - 1).toString();
    }
  }

  ChangeDown() {
    const clothingCategory = this.changingCat.parentElement.parentElement.dataset.type;
    const buttonType = this.changingCat.dataset.type;
    const inputVal = parseFloat(this.changingCat.value);

    if (clothingCategory == "accessory" && inputVal - 1 == 13) {
      this.changingCat.value = (12 + 1).toString();
    }
  }

  onItemNumberChange(event: any) {
    const clothingCategory = event.currentTarget.parentElement.parentElement.dataset.type;
    const buttonType = event.currentTarget.dataset.type;
    const inputVal = event.currentTarget.value;

    this.changingCat = event.currentTarget;

    if (this.hasTracker && clothingCategory == "accessory") {
      this.communicationService.postMessage('TrackerError');
      event.currentTarget.value = '13';
      return;
    } else {
      if (clothingCategory == "accessory" && inputVal == '13') {
        event.currentTarget.value = '12';
        return;
      } else {
        this.communicationService.postMessage('updateSkinOnInput', {
          clothingType: clothingCategory,
          articleNumber: parseFloat(inputVal),
          type: buttonType,
        });
      }
    }
  }

  onHeaderCameraBtnClick(event: any) {
    event.preventDefault();
    const camValue = parseFloat(event.currentTarget.dataset.value);

    if (this.selectedCam == null) {
      event.currentTarget.classList.add("selected-cam");
      this.communicationService.postMessage('setupCam', { value: camValue });
      this.selectedCam = event.currentTarget;
    } else {
      if (this.selectedCam == event.currentTarget) {
        this.selectedCam.classList.remove("selected-cam");
        this.communicationService.postMessage('setupCam', { value: 0 });
        this.selectedCam = null;
      } else {
        this.selectedCam.classList.remove("selected-cam");
        event.currentTarget.classList.add("selected-cam");
        this.communicationService.postMessage('setupCam', { value: camValue });
        this.selectedCam = event.currentTarget;
      }
    }
  }

  onKeyDown(event: any) {
    switch (event.keyCode) {
      case 68: // D
      this.communicationService.postMessage('rotateRight');
        break;
      case 65: // A
      this.communicationService.postMessage('rotateLeft');
        break;
      case 38: // UP
        this.ChangeUp();
        break;
      case 40: // DOWN
        this.ChangeDown();
        break;
    }
  }

  ToggleChange(bool: boolean) {
    this.canChange = bool;
  }



  onSaveMenuClick(event: any) {
    event.preventDefault();
    this.clothingService.Close();
    this.communicationService.postMessage('saveClothing');
  }

  onCancelMenuClick(event: any) {
    event.preventDefault();
    this.clothingService.Close();
    this.communicationService.postMessage('resetOutfit');
  }



  onSaveOutfitClick(e: any) {
    e.preventDefault();
    this.utilityService.toggleClass('.clothing-menu-container', 'show', false);
    this.utilityService.toggleClass('.clothing-menu-save-outfit-name', 'fade-in', true);
  }

  onSaveOutfitSaveClick(e: any) {
    e.preventDefault();
    this.utilityService.toggleClass('.clothing-menu-container', 'show', true);
    this.utilityService.toggleClass('.clothing-menu-save-outfit-name', 'fade-in', false);
    this.communicationService.postMessage('https://qb-clothing/saveOutfit', { outfitName: this.utilityService.getElementValue('#outfit-name') });
  }

  onCancelOutfitSaveClick(e: any) {
    e.preventDefault();
    this.utilityService.toggleClass('.clothing-menu-container', 'show', true);
    this.utilityService.toggleClass('.clothing-menu-save-outfit-name', 'fade-in', false);
  }

  onChangeCameraButtonClick(e: any) {
    e.preventDefault();
    const rotationType = e.currentTarget.dataset.rotation;
    this.communicationService.postMessage('https://qb-clothing/rotateCam', { type: rotationType });
  }

}