import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-clothing-menu-header-character',
  templateUrl: './clothing-menu-header-character.component.html',
  styleUrls: ['./clothing-menu-header-character.component.css']
})
export class ClothingMenuHeaderCharacterComponent implements OnInit {
  options: any[] = [];

  ngOnInit(): void {
    this.options = [
      { type: 'model', id: 'player_model', header: 'Player Model', items: [{ header: 'Model:', value: 1, type: 'item' }, { header: 'mp_m_freemode_01', type: 'text' }] },
      { type: 'face', id: 'face', header: 'Mother', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Skin color', value: 0, type: 'texture' }] },
      { type: 'face2', id: 'face2', header: 'Father', items: [{ header: 'Type', value: 0, type: 'item' }, { header: 'Skin Color', value: 0, type: 'texture' }] },
      { type: 'facemix', id: 'facemix', header: 'Parent Mixer', items: [{ header: 'Shape Mix', value: 0.5, type: 'shapeMix' }, { header: 'Skin Mix', value: 0.5, type: 'skinMix' }] },
      { type: 'nose_0', header: 'Nose Width', items: [{ header: 'Width', value: 0, type: 'item' }] },
      { type: 'nose_1', header: 'Nose Peak Height', items: [{ header: 'Height', value: 0, type: 'item' }] },
      { type: 'nose_2', header: 'Nose Peak Length', items: [{ header: 'Length', value: 0, type: 'item' }] },
      { type: 'nose_3', header: 'Nose Bone Height', items: [{ header: 'Height', value: 0, type: 'item' }] },
      { type: 'nose_4', header: 'Nose Peak Lowering', items: [{ header: 'Lowering', value: 0, type: 'item' }] },
      { type: 'nose_5', header: 'Nose Bone Twist', items: [{ header: 'Twist', value: 0, type: 'item' }] },
      { type: 'eyebrown_high', header: 'Eyebrow Height', items: [{ header: 'Height', value: 0, type: 'item' }] },
      { type: 'eyebrown_forward', header: 'Eyebrow Depth', items: [{ header: 'Depth', value: 0, type: 'item' }] },
      { type: 'cheek_1', header: 'Cheeks Height', items: [{ header: 'Height', value: 0, type: 'item' }] },
      { type: 'cheek_2', header: 'Cheeks Width', items: [{ header: 'Width', value: 0, type: 'item' }] },
      { type: 'cheek_3', header: 'Cheeks Depth', items: [{ header: 'Depth', value: 0, type: 'item' }] },
      { type: 'eye_opening', header: 'Eyes Opening', items: [{ header: 'Opening', value: 0, type: 'item' }] },
      { type: 'lips_thickness', header: 'Lips Thickness', items: [{ header: 'Thickness', value: 0, type: 'item' }] },
      { type: 'jaw_bone_width', header: 'Jaw Bone Width', items: [{ header: 'Width', value: 0, type: 'item' }] },
      { type: 'jaw_bone_back_lenght', header: 'Jaw Bone Length', items: [{ header: 'Length', value: 0, type: 'item' }] },
      { type: 'chimp_bone_lowering', header: 'Chin Bone Height', items: [{ header: 'Height', value: 0, type: 'item' }] },
      { type: 'chimp_bone_lenght', header: 'Chin Bone Length', items: [{ header: 'Length', value: 0, type: 'item' }] },
      { type: 'chimp_bone_width', header: 'Chin Bone Width', items: [{ header: 'Width', value: 0, type: 'item' }] },
      { type: 'chimp_hole', header: 'Butt Chin', items: [{ header: 'Size', value: 0, type: 'item' }] },
      { type: 'neck_thikness', header: 'Neck Thickness', items: [{ header: 'Thickness', value: 0, type: 'item' }] }
    ];
  }
}