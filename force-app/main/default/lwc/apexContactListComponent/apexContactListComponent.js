/**
 * Created by algirdas on 2023-01-19.*/

import { LightningElement, track } from 'lwc';
import getContacts from '@salesforce/apex/DAL_GetContacts.getContacts';
export default class ApexContactListComponent extends LightningElement
{
    @track contacts;

    firstName;

    setName(event) {
        this.firstName = event.target.value;
    }
    async loadContacts() {
        this.contacts = await getContacts({name: this.firstName});
    }
}
