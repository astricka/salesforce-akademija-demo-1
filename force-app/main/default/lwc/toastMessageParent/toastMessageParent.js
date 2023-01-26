/**
 * Created by algirdas on 2023-01-19.
 */

import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ToastMessageParent extends LightningElement {

    handleMyEvent(event) {
        const message = event.detail;
        const toastEvent = new ShowToastEvent({
            title: 'new message got',
            message: message,
            variant: 'info'
        });
        this.dispatchEvent(toastEvent);
    }
}
