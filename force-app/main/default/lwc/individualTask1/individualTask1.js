/**
 * Created by algirdas on 2023-01-25.
 */

import { LightningElement, track } from 'lwc';

export default class IndividualTask1 extends LightningElement {

    @track myArray = [{id: '1', name: 'Test'}];

    newItem;

    handleChange(event) {
        this.newItem = event.target.value;
    }
    addItemToArray() {
        const newItemToaArray = {
            id: String(Date.now()),
            name: this.newItem
        }
        this.myArray.push(newItemToaArray);
        this.template.querySelector('lightning-input#enter-new-item').value = null;
    }

    handleDelete(event) {
        try {
            console.log(event.target);
            const myId = event.target.dataset.value;
            console.log(myId);
            this.myArray = this.myArray.filter((myArray) => myArray.id !== myId);
            console.log(this.myArray);
        }
            catch (err) {
            console.log(err);
        }
    }
}
