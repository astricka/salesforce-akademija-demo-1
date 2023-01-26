/**
 * Created by algirdas on 2023-01-26.
 */

import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class IndividualTask5Parent extends LightningElement {

    handleMyEvent(event) {
        const message = event.detail;
        const toastEvent = new ShowToastEvent({
            title: 'Message got',
            message: 'Hello, ' + message,
            variant: 'info'
        });
        this.dispatchEvent(toastEvent);
    }

}
