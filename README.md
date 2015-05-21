# Template

This is a simple template formatting application. It allows the user to input some information that will be placed into a template, which is then printed to the screen.

## Usage

To run the program, simply run `lib/template_driver.rb`. It will prompt for the following information:
- The customer's first name (required)
- The customer's last name (optional)
- The salutation, which can include the customer's name (optional, if omitted it will default to "Dear 'first_name'")
- The product name (required)

The program will render the template, and print it to the screen.

## Testing

There are some simple tests in `spec/template_spec.rb`. One test verifies that the template is printed when all variables are properly assigned. Another test verifies that the default salutation is printed when a salutation is not explicitly assigned.

## Approach

I took a sequential approach to building this application. First, I implemented the solution in a very basic way, with the template hard-coded in the file, and asking the user for inputs. From there, I started adding extra features (such as reading the template in from an external file), and cleaning up the code (moving the driver code to its own file). Along the way, I kept updating the tests to keep them passing.

## Further Improvements

One improvement that could be made is to test the logic of getting and verifying the user inputs. However, redirecting `stdin` is a fairly complicated process, so manually testing the logic is okay in this instance.

Another improvement would be to create a program to edit the template itself.The template is already stored in an external file and read into the program at runtime, so editing the template would be a logical next step. One more step past that would be to create the ability to create, edit, and use multiple templates.
