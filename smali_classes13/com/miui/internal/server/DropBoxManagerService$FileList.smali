.class final Lcom/miui/internal/server/DropBoxManagerService$FileList;
.super Ljava/lang/Object;
.source "DropBoxManagerService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FileList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/internal/server/DropBoxManagerService$FileList;",
        ">;"
    }
.end annotation


# instance fields
.field public blocks:I

.field public final contents:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/miui/internal/server/DropBoxManagerService$EntryFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/server/DropBoxManagerService$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/server/DropBoxManagerService$FileList;-><init>()V

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/miui/internal/server/DropBoxManagerService$FileList;)I
    .registers 5

    iget v0, p0, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;->blocks:I

    if-eq v0, v1, :cond_8

    sub-int/2addr v1, v0

    return v1

    :cond_8
    const/4 v0, 0x0

    if-ne p0, p1, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ge v1, v2, :cond_18

    const/4 v0, -0x1

    return v0

    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-le v1, v2, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/miui/internal/server/DropBoxManagerService$FileList;

    invoke-virtual {p0, p1}, Lcom/miui/internal/server/DropBoxManagerService$FileList;->compareTo(Lcom/miui/internal/server/DropBoxManagerService$FileList;)I

    move-result p1

    return p1
.end method
