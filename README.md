Transcontinental
=======================

iOS library to obtain the continent of a CLPlacemark or from a country code in the ISO 3166 standard (Ex: MX, PL, US, JP).

Usage
-----

1. Add the contents of the **Source/** directory to your project*. 
2. Using the **CLPlacemark category** is as easy as calling the method **-continent**. 

  ````objective-c
  NSString *continentForPlacemark = [paramPlacemark continent];
  ````

   This will return a NSString object with the corresponding continent: Africa, America, Asia, Australia or Europe. 
   
   If no continent can be determined using the -ISOcountryCode property of the placemark, a pointer to nil will be returned.

3. Using the **decoder class (HZCountryToContinentDecoder)** is also easy:

  ````objective-c
  HZCountryToContinentDecoder *continentDecoder = [[HZCountryToContinentDecoder alloc] init];
    
  NSString *expectedContinent = [continentDecoder continentForCountryCode:@"PL"];
  ````
4. Enjoy country-to-continent mapping!


Contribution
------------
Yes, please!
Feel free to fork the project and re-make, re-model whatever you fancy. 
Pull requests are welcome as well as new bug reports or notes in the form of 'Issues'. 


License
-------

Copyright (c) 2013 Hector Zarate

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
