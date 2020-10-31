.class Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LanguagePairCount"
.end annotation


# instance fields
.field final languageCode:I

.field final septetCounts:[I

.field final unencodableCounts:[I


# direct methods
.method constructor <init>(I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    # getter for: Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->access$000()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_17
    const/4 v3, -0x1

    if-gt v1, v0, :cond_2c

    # getter for: Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->access$100()[I

    move-result-object v4

    aget v4, v4, v2

    if-ne v4, v1, :cond_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_25
    iget-object v4, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v4, v1

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2c
    const/4 v1, 0x1

    if-ne p1, v1, :cond_36

    if-lt v0, v1, :cond_36

    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    goto :goto_40

    :cond_36
    const/4 v1, 0x3

    if-ne p1, v1, :cond_40

    const/4 v1, 0x2

    if-lt v0, v1, :cond_40

    iget-object v2, p0, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    aput v3, v2, v1

    :cond_40
    :goto_40
    return-void
.end method
