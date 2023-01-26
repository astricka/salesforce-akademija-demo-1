/**
 * Created by algirdas on 2023-01-19.
 */

import { LightningElement, track } from 'lwc';

export default class PersonComponent extends LightningElement {

    @track person = {
        name: 'jonas',
        age: 32
    }

    handleClick() {
        this.person.age += 1;
    }
}
