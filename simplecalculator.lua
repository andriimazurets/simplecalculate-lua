function tableContains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

function inputNumber(prompt)
    while true do
        io.write(prompt .. ": ")
        local input = io.read()

        local number = tonumber(input)

        if number then
            return number
        else
            print("Пожалуйста, введите корректное число.")
        end
    end
end

function inputOperator()
    local operators = { "+", "-", "*", "/" }

    while true do
        io.write("Выберите оператор (+, -, *, /): ")
        local operator = io.read()

        if tableContains(operators, operator) then
            return operator
        else
            print("Пожалуйста, выберите допустимый оператор.")
        end
    end
end

function calculate(num1, num2, operator)
    if operator == "+" then
        return num1 + num2
    elseif operator == "-" then
        return num1 - num2
    elseif operator == "*" then
        return num1 * num2
    elseif operator == "/" then
        if num2 == 0 then
            print("Ошибка: деление на ноль.")
            return nil
        else
            return num1 / num2
        end
    else
        print("Ошибка: неизвестный оператор.")
        return nil
    end
end

print("Добро пожаловать в калькулятор Lua!")

local num1 = inputNumber("Введите первое число")
local num2 = inputNumber("Введите второе число")
local operator = inputOperator()

local result = calculate(num1, num2, operator)

if result ~= nil then
    print("Результат:", result)
end

