.class Lcom/android/internal/app/LocalePickerInjector$1;
.super Ljava/lang/Object;
.source "LocalePickerInjector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePickerInjector;->sortLocaleInfos([Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$topLocales:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/LocalePickerInjector$1;->val$topLocales:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findTopLocale([Ljava/lang/String;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_18

    aget-object v1, p1, v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_18
    array-length v0, p1

    return v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 6

    iget-object v0, p0, Lcom/android/internal/app/LocalePickerInjector$1;->val$topLocales:[Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/app/LocalePickerInjector$1;->findTopLocale([Ljava/lang/String;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePickerInjector$1;->val$topLocales:[Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/internal/app/LocalePickerInjector$1;->findTopLocale([Ljava/lang/String;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v1

    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/LocalePickerInjector$1;->compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result p1

    return p1
.end method
