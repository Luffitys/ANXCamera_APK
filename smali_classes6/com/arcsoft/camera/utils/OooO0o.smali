.class public Lcom/arcsoft/camera/utils/OooO0o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private OooO00o:I

.field private OooO0O0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    iput p2, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public OooO00o(Lcom/arcsoft/camera/utils/OooO0o;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    iget v1, p1, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    iget p1, p1, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    sub-int/2addr p0, p1

    return p0

    :cond_1
    sub-int/2addr v0, v1

    return v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public OooO0OO(II)Z
    .locals 1

    iget v0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO0Oo(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/arcsoft/camera/utils/OooO0o;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    check-cast p1, Lcom/arcsoft/camera/utils/OooO0o;

    iget v0, p1, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    iget p1, p1, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    invoke-virtual {p0, v0, p1}, Lcom/arcsoft/camera/utils/OooO0o;->OooO0OO(II)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public synthetic OooO0o(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/arcsoft/camera/utils/OooO0o;

    invoke-virtual {p0, p1}, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o(Lcom/arcsoft/camera/utils/OooO0o;)I

    move-result p0

    return p0
.end method

.method public OooO0o0()I
    .locals 1

    iget v0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO00o:I

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/arcsoft/camera/utils/OooO0o;->OooO0O0:I

    add-int/2addr v0, p0

    return v0
.end method
