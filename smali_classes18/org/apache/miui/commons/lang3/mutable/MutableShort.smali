.class public Lorg/apache/miui/commons/lang3/mutable/MutableShort;
.super Ljava/lang/Number;
.source "MutableShort.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/miui/commons/lang3/mutable/Mutable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/miui/commons/lang3/mutable/MutableShort;",
        ">;",
        "Lorg/apache/miui/commons/lang3/mutable/Mutable<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f4d983fL


# instance fields
.field private value:S


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public constructor <init>(S)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-short p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Number;)V
    .registers 4

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public add(S)V
    .registers 3

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    add-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableShort;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/miui/commons/lang3/mutable/MutableShort;)I
    .registers 4

    iget-short v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    iget-short v1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    if-ge v1, v0, :cond_8

    const/4 v1, -0x1

    goto :goto_d

    :cond_8
    if-ne v1, v0, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1
.end method

.method public decrement()V
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public doubleValue()D
    .registers 3

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    move-object v2, p1

    check-cast v2, Lorg/apache/miui/commons/lang3/mutable/MutableShort;

    invoke-virtual {v2}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v2

    if-ne v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1

    :cond_12
    return v1
.end method

.method public floatValue()F
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    int-to-float v0, v0

    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->getValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Short;
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public increment()V
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public intValue()I
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public longValue()J
    .registers 3

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(Ljava/lang/Number;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public setValue(S)V
    .registers 2

    iput-short p1, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public shortValue()S
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return v0
.end method

.method public subtract(Ljava/lang/Number;)V
    .registers 4

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public subtract(S)V
    .registers 3

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    sub-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    return-void
.end method

.method public toShort()Ljava/lang/Short;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-short v0, p0, Lorg/apache/miui/commons/lang3/mutable/MutableShort;->value:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
