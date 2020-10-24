.class final Lcom/miui/internal/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public blocks:I

.field public final contents:Ljava/util/TreeSet;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/miui/internal/server/DropBoxManagerService$FileList;)I
    .locals 3

    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-le p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/server/DropBoxManagerService$FileList;->compareTo(Lcom/miui/internal/server/DropBoxManagerService$FileList;)I

    move-result p0

    return p0
.end method
