/**
 * Created by algirdas on 2023-01-26.
 */

import { LightningElement } from 'lwc';

export default class IndividualTask5Child extends LightningElement {
    firstName;
    lastName;

    handleFirstName(event) {
        this.firstName = event.target.value;
    }

    handleLastName(event) {
        this.lastName = event.target.value;
    }

    handleClick() {
        const messageEvent = new CustomEvent('myevent', {
            detail: this.firstName + ' ' + this.lastName
        });
        this.dispatchEvent(messageEvent);
    }
}
