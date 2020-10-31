.class final Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;
.super Ljava/lang/Object;
.source "AndroidDistinguishedNameParser.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private beg:I

.field private chars:[C

.field private cur:I

.field private final dn:Ljava/lang/String;

.field private end:I

.field private final length:I

.field private pos:I


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    return-void
.end method

.method private escapedAV()Ljava/lang/String;
    .registers 9

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :cond_6
    :goto_6
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v0, v1, :cond_19

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_19
    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_60

    if-eq v2, v5, :cond_53

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_40

    if-eq v2, v4, :cond_53

    if-eq v2, v3, :cond_53

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_6

    :cond_40
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_6

    :cond_53
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_60
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    :goto_6e
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_87

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-ne v2, v6, :cond_87

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_6e

    :cond_87
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_9b

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_9b

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_9b

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_6

    :cond_9b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private getByte(I)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_76

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v0, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt v0, v7, :cond_1e

    if-gt v0, v5, :cond_1e

    sub-int/2addr v0, v7

    goto :goto_2b

    :cond_1e
    if-lt v0, v6, :cond_25

    if-gt v0, v3, :cond_25

    add-int/lit8 v0, v0, -0x57

    goto :goto_2b

    :cond_25
    if-lt v0, v4, :cond_5f

    if-gt v0, v1, :cond_5f

    add-int/lit8 v0, v0, -0x37

    :goto_2b
    iget-object v8, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    add-int/lit8 v9, p1, 0x1

    aget-char v8, v8, v9

    if-lt v8, v7, :cond_37

    if-gt v8, v5, :cond_37

    sub-int/2addr v8, v7

    goto :goto_44

    :cond_37
    if-lt v8, v6, :cond_3e

    if-gt v8, v3, :cond_3e

    add-int/lit8 v8, v8, -0x57

    goto :goto_44

    :cond_3e
    if-lt v8, v4, :cond_48

    if-gt v8, v1, :cond_48

    add-int/lit8 v8, v8, -0x37

    :goto_44
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v1, v8

    return v1

    :cond_48
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_76
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEscaped()C
    .registers 4

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_38

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_31

    const/16 v1, 0x25

    if-eq v0, v1, :cond_31

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_31

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_31

    const/16 v1, 0x22

    if-eq v0, v1, :cond_31

    const/16 v1, 0x23

    if-eq v0, v1, :cond_31

    packed-switch v0, :pswitch_data_52

    packed-switch v0, :pswitch_data_5c

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getUTF8()C

    move-result v0

    return v0

    :cond_31
    :pswitch_31
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    return v0

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_52
    .packed-switch 0x2a
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x3b
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private getUTF8()C
    .registers 9

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0, v0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v0

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char v1, v0

    return v1

    :cond_12
    const/16 v2, 0xc0

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_64

    const/16 v2, 0xf7

    if-gt v0, v2, :cond_64

    const/16 v2, 0xdf

    if-gt v0, v2, :cond_24

    const/4 v2, 0x1

    and-int/lit8 v0, v0, 0x1f

    goto :goto_2f

    :cond_24
    const/16 v2, 0xef

    if-gt v0, v2, :cond_2c

    const/4 v2, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    :cond_2c
    const/4 v2, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_2f
    const/4 v4, 0x0

    :goto_30
    if-ge v4, v2, :cond_62

    iget v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v5, v6, :cond_61

    iget-object v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v6, v6, v5

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_45

    goto :goto_61

    :cond_45
    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0, v5}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v5

    iget v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    and-int/lit16 v6, v5, 0xc0

    if-eq v6, v1, :cond_58

    return v3

    :cond_58
    shl-int/lit8 v6, v0, 0x6

    and-int/lit8 v7, v5, 0x3f

    add-int v0, v6, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_61
    :goto_61
    return v3

    :cond_62
    int-to-char v1, v0

    return v1

    :cond_64
    return v3
.end method

.method private hexAV()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_a9

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_10
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_61

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_61

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_2b

    goto :goto_61

    :cond_2b
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_48

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_37
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_66

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v4, :cond_66

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_37

    :cond_48
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_5a

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_5a

    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_5a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_10

    :cond_61
    :goto_61
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    nop

    :cond_66
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_92

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_92

    div-int/lit8 v2, v0, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_79
    array-length v4, v2

    if-ge v3, v4, :cond_88

    invoke-direct {p0, v1}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_88
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_92
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private nextAT()Ljava/lang/String;
    .registers 7

    :goto_0
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_13

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_0

    :cond_13
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v0, v1, :cond_1b

    const/4 v0, 0x0

    return-object v0

    :cond_1b
    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_21
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_38

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_38

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_38

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_21

    :cond_38
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_f0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_81

    :goto_48
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_5d

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_5d

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_5d

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_48

    :cond_5d
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_6a

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v1, v0, :cond_6a

    goto :goto_81

    :cond_6a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    :goto_81
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    :goto_87
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_98

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_98

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_87

    :cond_98
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_e3

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_e3

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_b6

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_e3

    :cond_b6
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_ca

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_e3

    :cond_ca
    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_de

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_e3

    :cond_de
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    :cond_e3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_f0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private quotedAV()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    :goto_a
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-eq v0, v1, :cond_5f

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_3d

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    nop

    :goto_1d
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-ne v1, v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    goto :goto_1d

    :cond_30
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3d
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4c

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->getEscaped()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_52

    :cond_4c
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    :goto_52
    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    goto :goto_a

    :cond_5f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected end of DN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public findMostSpecific(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    :goto_19
    const-string v2, ""

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ne v3, v4, :cond_22

    return-object v1

    :cond_22
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v3, v4, v3

    const/16 v4, 0x22

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    const/16 v7, 0x2b

    if-eq v3, v4, :cond_45

    const/16 v4, 0x23

    if-eq v3, v4, :cond_40

    if-eq v3, v7, :cond_3f

    if-eq v3, v6, :cond_3f

    if-eq v3, v5, :cond_3f

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_3f
    goto :goto_4a

    :cond_40
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v2

    goto :goto_4a

    :cond_45
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v2

    nop

    :goto_4a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    return-object v2

    :cond_51
    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v3, v4, :cond_58

    return-object v1

    :cond_58
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v8, v4, v3

    const-string v9, "Malformed DN: "

    if-eq v8, v6, :cond_81

    aget-char v6, v4, v3

    if-ne v6, v5, :cond_65

    goto :goto_81

    :cond_65
    aget-char v3, v4, v3

    if-ne v3, v7, :cond_6a

    goto :goto_81

    :cond_6a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_81
    :goto_81
    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8e

    goto :goto_19

    :cond_8e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllMostSpecificFirst(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->beg:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->end:I

    iput v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->cur:I

    iget-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    return-object v0

    :cond_1c
    :goto_1c
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v3, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-ge v2, v3, :cond_b6

    const-string v3, ""

    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v2, v4, v2

    const/16 v4, 0x22

    const/16 v5, 0x3b

    const/16 v6, 0x2c

    const/16 v7, 0x2b

    if-eq v2, v4, :cond_47

    const/16 v4, 0x23

    if-eq v2, v4, :cond_42

    if-eq v2, v7, :cond_41

    if-eq v2, v6, :cond_41

    if-eq v2, v5, :cond_41

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->escapedAV()Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :cond_41
    goto :goto_4c

    :cond_42
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->hexAV()Ljava/lang/String;

    move-result-object v3

    goto :goto_4c

    :cond_47
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->quotedAV()Ljava/lang/String;

    move-result-object v3

    nop

    :goto_4c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    :cond_5e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    iget v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->length:I

    if-lt v2, v4, :cond_68

    goto :goto_b6

    :cond_68
    iget-object v4, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->chars:[C

    aget-char v8, v4, v2

    const-string v9, "Malformed DN: "

    if-eq v8, v6, :cond_91

    aget-char v6, v4, v2

    if-ne v6, v5, :cond_75

    goto :goto_91

    :cond_75
    aget-char v2, v4, v2

    if-ne v2, v7, :cond_7a

    goto :goto_91

    :cond_7a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_91
    :goto_91
    iget v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->pos:I

    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->nextAT()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9f

    goto/16 :goto_1c

    :cond_9f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/http/conn/ssl/AndroidDistinguishedNameParser;->dn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b6
    :goto_b6
    return-object v0
.end method
