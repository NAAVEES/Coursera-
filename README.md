# Simple Interest Calculator

A lightweight tool/script that calculates **simple interest** based on principal amount, interest rate, and time period.

## 📌 What is Simple Interest?

Simple interest is a quick method of calculating the interest charge on a loan or the return on an investment. Unlike compound interest, it is calculated only on the original principal amount, not on any interest earned previously.

## 🧮 Formula

```
Simple Interest (SI) = (P × R × T) / 100
```

Where:
- **P** = Principal amount (the initial sum of money)
- **R** = Annual interest rate (in percentage)
- **T** = Time period (in years)

The **Total Amount** payable/receivable is:

```
A = P + SI
```

## 🚀 How It Works

1. Take the principal amount as input.
2. Take the annual interest rate as input.
3. Take the time period (in years) as input.
4. Apply the formula to calculate the simple interest.
5. Display the interest amount and the total amount.

## 💻 Example (Python)

```python
def calculate_simple_interest(principal, rate, time):
    interest = (principal * rate * time) / 100
    total_amount = principal + interest
    return interest, total_amount

principal = float(input("Enter principal amount: "))
rate = float(input("Enter annual interest rate (%): "))
time = float(input("Enter time period (years): "))

interest, total = calculate_simple_interest(principal, rate, time)

print(f"Simple Interest: {interest}")
print(f"Total Amount: {total}")
```

## 📥 Sample Input & Output

**Input:**
```
Principal: 1000
Rate: 5
Time: 2
```

**Output:**
```
Simple Interest: 100.0
Total Amount: 1100.0
```

## 📄 License

This project is open-source and available under the MIT License.
