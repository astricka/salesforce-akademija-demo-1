/**
 * Created by algirdas on 2023-01-26.
 */

import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class IndividualTask5Parent extends LightningElement {

    eventName = '';

    hasEventName = false;
    handleMyEvent(event) {
        this.eventName = event.detail;
        this.hasEventName = true;
        const toastEvent = new ShowToastEvent({
            title: 'Message got',
            message: 'Hello, ' + this.eventName,
            variant: 'info'
        });
        this.dispatchEvent(toastEvent);
    }

}
