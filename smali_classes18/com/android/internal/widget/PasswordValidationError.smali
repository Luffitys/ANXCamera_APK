.class public Lcom/android/internal/widget/PasswordValidationError;
.super Ljava/lang/Object;
.source "PasswordValidationError.java"


# static fields
.field public static final CONTAINS_INVALID_CHARACTERS:I = 0x2

.field public static final CONTAINS_SEQUENCE:I = 0x5

.field public static final NOT_ENOUGH_DIGITS:I = 0x9

.field public static final NOT_ENOUGH_LETTERS:I = 0x6

.field public static final NOT_ENOUGH_LOWER_CASE:I = 0x8

.field public static final NOT_ENOUGH_NON_DIGITS:I = 0xc

.field public static final NOT_ENOUGH_NON_LETTER:I = 0xb

.field public static final NOT_ENOUGH_SYMBOLS:I = 0xa

.field public static final NOT_ENOUGH_UPPER_CASE:I = 0x7

.field public static final RECENTLY_USED:I = 0xd

.field public static final TOO_LONG:I = 0x4

.field public static final TOO_SHORT:I = 0x3

.field public static final WEAK_CREDENTIAL_TYPE:I = 0x1


# instance fields
.field public final errorCode:I

.field public final requirement:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/PasswordValidationError;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    iput p2, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    return-void
.end method

.method private static errorCodeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "Pin or password was recently used"

    return-object v0

    :pswitch_18
    const-string v0, "Too few non-numeric characters"

    return-object v0

    :pswitch_1b
    const-string v0, "Too few non-letter characters"

    return-object v0

    :pswitch_1e
    const-string v0, "Too few symbols"

    return-object v0

    :pswitch_21
    const-string v0, "Too few numeric characters"

    return-object v0

    :pswitch_24
    const-string v0, "Too few lower case letters"

    return-object v0

    :pswitch_27
    const-string v0, "Too few upper case letters"

    return-object v0

    :pswitch_2a
    const-string v0, "Too few letters"

    return-object v0

    :pswitch_2d
    const-string v0, "Sequence too long"

    return-object v0

    :pswitch_30
    const-string v0, "Password too long"

    return-object v0

    :pswitch_33
    const-string v0, "Password too short"

    return-object v0

    :pswitch_36
    const-string v0, "Contains an invalid character"

    return-object v0

    :pswitch_39
    const-string v0, "Weak credential type"

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/internal/widget/PasswordValidationError;->errorCode:I

    invoke-static {v1}, Lcom/android/internal/widget/PasswordValidationError;->errorCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    if-lez v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/widget/PasswordValidationError;->requirement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_26
    const-string v1, ""

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
