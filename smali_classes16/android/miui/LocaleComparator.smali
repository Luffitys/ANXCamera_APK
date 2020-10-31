.class public Landroid/miui/LocaleComparator;
.super Ljava/lang/Object;
.source "LocaleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final NON_TOP_LOCALE_INDEX:I

.field private static final TOP_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_22

    const-string/jumbo v1, "zh_CN"

    const-string v2, "en_US"

    const-string v3, "en_GB"

    const-string v4, "hi_IN"

    const-string v5, "in_ID"

    const-string/jumbo v6, "ms_MY"

    const-string/jumbo v7, "vi_VN"

    const-string/jumbo v8, "zh_TW"

    const-string/jumbo v9, "th_TH"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    goto :goto_30

    :cond_22
    const-string/jumbo v0, "zh_CN"

    const-string/jumbo v1, "zh_TW"

    const-string v2, "en_US"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    :goto_30
    sget-object v0, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 6

    invoke-virtual {p0, p1}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    invoke-virtual {p0, p2}, Landroid/miui/LocaleComparator;->findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v1

    if-ne v0, v1, :cond_f

    invoke-virtual {p1, p2}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v2

    goto :goto_11

    :cond_f
    sub-int v2, v0, v1

    :goto_11
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Landroid/miui/LocaleComparator;->compare(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result p1

    return p1
.end method

.method public findTopLocale(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Landroid/miui/LocaleComparator;->TOP_LOCALES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1a

    aget-object v1, v1, v0

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    sget v0, Landroid/miui/LocaleComparator;->NON_TOP_LOCALE_INDEX:I

    return v0
.end method
