/**
 * Created by algirdas on 2023-01-25.
 */

import { LightningElement, track } from 'lwc';

export default class IndividualTask3 extends LightningElement {

    @track myArr = [];
    number = 10;
    n1 = 0;
    n2 = 1;
    nextTerm;

    connectedCallback() {
        this.countingFibonacci(this.number);
    }

    handleChange(event) {
        this.number = event.target.value;
    }

    handleClick() {
        this.countingFibonacci(this.number);
    }

    countingFibonacci(countingNumber) {
        this.myArr = [];
        this.n1 = 0;
        this.n2 = 1;
        this.myArr.push({
            id: 0,
            value: this.n1
        });
        for (let i = 1; i <= countingNumber; i++) {
            console.log(this.n1);
            this.nextTerm = this.n1 + this.n2;
            this.n1 = this.n2;
            this.n2 = this.nextTerm;

            this.myArr.push({
                id: i,
                value: this.n1
            });
        }
    }
}
