import { LightningElement, track, wire } from 'lwc';

export default class TestLightningComponent extends LightningElement {
@track
screenText = 'Hi there!';
handleClick(){
    this.screenText = 'Button Clicked';
}

}