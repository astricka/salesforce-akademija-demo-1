/**
 * Created by algirdas on 2023-01-26.
 */

import { api, LightningElement, track } from 'lwc';
import getContacts from '@salesforce/apex/DAL_ApexInLwc.getContacts';

export default class IndividualTask4 extends LightningElement {
    @api contactId;
    handleChange(event) {
        this.contactId = event.target.value;
        console.log(event.target.value);
    }
    connectedCallback() {
        getContacts ({id: this.contactId})
            .then((result) => {
                this.contacts = result;
                console.log(this.contacts);
            })
            .catch((err) => {
                console.log(err);
            });
        console.log('Labas rytas');
    }
}
