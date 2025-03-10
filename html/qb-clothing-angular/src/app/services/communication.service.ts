import { Injectable } from '@angular/core';
import { Subject } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class CommunicationService {

  constructor() {

  }

  //communication service

  postMessage(event: string, data?: any, callback?: (response: any) => void) {
    // Replace with actual implementation to post messages
    console.log(`Posting message: ${event}`, data);
    if (callback) {
      callback(data);
    }
  }
}