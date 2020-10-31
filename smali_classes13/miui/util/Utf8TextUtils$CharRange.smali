.class Lmiui/util/Utf8TextUtils$CharRange;
.super Ljava/lang/Object;
.source "Utf8TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/Utf8TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharRange"
.end annotation


# instance fields
.field length:I

.field start:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    return-void
.end method

.method constructor <init>(II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iput v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    iput p1, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iput p2, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    return-void
.end method


# virtual methods
.method getEndIndex()I
    .registers 3

    iget v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    iget v1, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method isValid()Z
    .registers 2

    iget v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->start:I

    if-ltz v0, :cond_a

    iget v0, p0, Lmiui/util/Utf8TextUtils$CharRange;->length:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
