import { OpenNavigation } from 'open-navigation';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    OpenNavigation.echo({ value: inputValue })
}
