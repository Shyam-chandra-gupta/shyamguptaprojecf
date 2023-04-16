import { LightningElement , track } from 'lwc';

export default class CreateLWCfirst extends LightningElement {
    @track Multiply;
    @track divide;
    @track Sum;
    @track Substract;
    input1;
    input2;
    @track result;
    getvalue(event){
        if(event.target.name == 'putNum1'){
            this.input1=event.detail.value;
            console.log('this.input1>>>'+this.input1);
        }
        if(event.target.name == 'putNum2'){
            this.input2=event.detail.value;
            console.log('this.input2>>>'+this.input2);
        }
    }


    getMultiplication(){
        
        this.Multiply = Number(this.input1) * Number(this.input2);
        this.result = this.Multiply;
        console.log('this.Multiply>>>'+this.Multiply);
    }
    getDivision(){
        this.divide = Number(this.input1) / Number(this.input2);
        this.result = this.divide;
}
getSumValue(){
    this.Sum = Number(this.input1) + Number(this.input2);
    this.result = this.Sum;
}
getSubstraction(){
    this.Substract = Number(this.input1) - Number(this.input2);
    this.result = this.Substract;
}
}