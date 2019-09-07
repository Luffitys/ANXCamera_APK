.class public Lcom/arcsoft/camera/utils/g;
.super Ljava/lang/Object;
.source "MSize.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/arcsoft/camera/utils/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/camera/utils/g;->a:I

    iput p2, p0, Lcom/arcsoft/camera/utils/g;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/arcsoft/camera/utils/g;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/arcsoft/camera/utils/g;->a:I

    iget v1, p1, Lcom/arcsoft/camera/utils/g;->a:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/arcsoft/camera/utils/g;->b:I

    iget p1, p1, Lcom/arcsoft/camera/utils/g;->b:I

    sub-int/2addr p0, p1

    return p0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/camera/utils/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/camera/utils/g;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(II)Z
    .locals 1

    iget v0, p0, Lcom/arcsoft/camera/utils/g;->a:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/arcsoft/camera/utils/g;->b:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/camera/utils/g;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/arcsoft/camera/utils/g;->b:I

    add-int/2addr v0, p0

    return v0
.end method

.method public h(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/arcsoft/camera/utils/g;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    check-cast p1, Lcom/arcsoft/camera/utils/g;

    iget v0, p1, Lcom/arcsoft/camera/utils/g;->a:I

    iget p1, p1, Lcom/arcsoft/camera/utils/g;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/arcsoft/camera/utils/g;->a(II)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public synthetic i(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/arcsoft/camera/utils/g;

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/g;->a(Lcom/arcsoft/camera/utils/g;)I

    move-result p0

    return p0
.end method
