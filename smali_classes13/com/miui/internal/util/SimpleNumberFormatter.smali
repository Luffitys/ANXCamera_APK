.class public Lcom/miui/internal/util/SimpleNumberFormatter;
.super Ljava/lang/Object;
.source "SimpleNumberFormatter.java"


# static fields
.field private static sLocale:Ljava/util/Locale;

.field private static sZeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    sget-object v1, Lcom/miui/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    sput-char v0, Lcom/miui/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertInt(II)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v0

    invoke-interface {v0}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    move v1, p0

    if-gez p1, :cond_15

    neg-int p1, p1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    const/16 v2, 0x2710

    const/16 v3, 0x30

    if-lt p1, v2, :cond_2f

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :goto_23
    if-ge v4, v1, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4e

    :cond_2f
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_35

    const/4 v2, 0x4

    goto :goto_42

    :cond_35
    const/16 v2, 0x64

    if-lt p1, v2, :cond_3b

    const/4 v2, 0x3

    goto :goto_42

    :cond_3b
    const/16 v2, 0xa

    if-lt p1, v2, :cond_41

    const/4 v2, 0x2

    goto :goto_42

    :cond_41
    const/4 v2, 0x1

    :goto_42
    move v4, v2

    :goto_43
    if-ge v4, v1, :cond_4b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    :cond_4b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v3

    invoke-interface {v3, v0}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v2
.end method

.method public static format(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    invoke-static {v0, p0}, Lcom/miui/internal/util/SimpleNumberFormatter;->format(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(II)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/SimpleNumberFormatter;->getZeroDigit(Ljava/util/Locale;)C

    move-result v0

    invoke-static {p0, p1}, Lcom/miui/internal/util/SimpleNumberFormatter;->convertInt(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x30

    if-eq v0, v2, :cond_14

    invoke-static {v0, v1}, Lcom/miui/internal/util/SimpleNumberFormatter;->localizeDigits(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_14
    return-object v1
.end method

.method private static getZeroDigit(Ljava/util/Locale;)C
    .registers 3

    if-eqz p0, :cond_1a

    sget-object v0, Lcom/miui/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    sput-char v0, Lcom/miui/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    sput-object p0, Lcom/miui/internal/util/SimpleNumberFormatter;->sLocale:Ljava/util/Locale;

    :cond_17
    sget-char v0, Lcom/miui/internal/util/SimpleNumberFormatter;->sZeroDigit:C

    return v0

    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static localizeDigits(CLjava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, p0, -0x30

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v2

    invoke-interface {v2}, Lmiui/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v0, :cond_28

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_22

    const/16 v5, 0x39

    if-gt v4, v5, :cond_22

    add-int v5, v4, v1

    int-to-char v4, v5

    :cond_22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lmiui/util/Pools;->getStringBuilderPool()Lmiui/util/Pools$Pool;

    move-result-object v4

    invoke-interface {v4, v2}, Lmiui/util/Pools$Pool;->release(Ljava/lang/Object;)V

    return-object v3
.end method
