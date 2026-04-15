# Shifoxona Navbat Smart-Kontraktlari

Quyida har bir topshiriq alohida `.sol` faylda bajarilgan:

1. `Task1_HospitalQueue.sol` - Shifoxona navbat (queue) kontrakti.
2. `Task2_PayableFunction.sol` - `payable` funksiya qo'shilgan.
3. `Task3_OnlySpecificAddress.sol` - Faqat ma'lum adres to'lov yubora oladi.
4. `Task4_MinimumPaymentRequire.sol` - Minimal to'lov `require` bilan tekshiriladi.
5. `Task5_ForwardFunds.sol` - Shart bajarilganda mablag' boshqa adresga o'tkaziladi.
6. `Task6_IfElseTransactions.sol` - `if/else` orqali turli holatda turli tranzaksiya.
7. `Task7_MappingBalances.sol` - `mapping` orqali foydalanuvchi balansi saqlanadi.
8. `Task8_OwnerOnlyWithdraw.sol` - Faqat owner pul yecha oladi.
9. `Task9_EventOnPayment.sol` - To'lov bo'lganda `event` (`emit`) chiqariladi.

## Eslatma

Ba'zi fayllarda `constructor` parametrlari bor:

- `Task3_OnlySpecificAddress.sol`: `_allowedPayer`
- `Task5_ForwardFunds.sol`: `_receiver`
- `Task6_IfElseTransactions.sol`: `_regularReceiver`, `_urgentReceiver`
