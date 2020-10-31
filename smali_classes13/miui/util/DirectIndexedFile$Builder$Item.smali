.class Lmiui/util/DirectIndexedFile$Builder$Item;
.super Ljava/lang/Object;
.source "DirectIndexedFile.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/DirectIndexedFile$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/util/DirectIndexedFile$Builder$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mObjects:[Ljava/lang/Object;

.field final synthetic this$0:Lmiui/util/DirectIndexedFile$Builder;


# direct methods
.method private constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->this$0:Lmiui/util/DirectIndexedFile$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    iput-object p3, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;Lmiui/util/DirectIndexedFile$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/util/DirectIndexedFile$Builder$Item;-><init>(Lmiui/util/DirectIndexedFile$Builder;I[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3500(Lmiui/util/DirectIndexedFile$Builder$Item;)I
    .registers 2

    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method

.method static synthetic access$4200(Lmiui/util/DirectIndexedFile$Builder$Item;)[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mObjects:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    invoke-virtual {p0, p1}, Lmiui/util/DirectIndexedFile$Builder$Item;->compareTo(Lmiui/util/DirectIndexedFile$Builder$Item;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiui/util/DirectIndexedFile$Builder$Item;)I
    .registers 4

    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    iget v1, p1, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    goto :goto_16

    :cond_5
    instance-of v1, p1, Lmiui/util/DirectIndexedFile$Builder$Item;

    if-eqz v1, :cond_16

    iget v1, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    move-object v2, p1

    check-cast v2, Lmiui/util/DirectIndexedFile$Builder$Item;

    iget v2, v2, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    move v0, v1

    :cond_16
    :goto_16
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lmiui/util/DirectIndexedFile$Builder$Item;->mIndex:I

    return v0
.end method
