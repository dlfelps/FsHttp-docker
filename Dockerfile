FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /app

# Copy everything
COPY . ./
# Restore as distinct layers
RUN dotnet restore 
# Build 
RUN dotnet build --no-restore
# test
RUN dotnet test --verbosity normal

