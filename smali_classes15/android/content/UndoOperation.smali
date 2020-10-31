.class public abstract Landroid/content/UndoOperation;
.super Ljava/lang/Object;
.source "UndoOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DATA:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# instance fields
.field mOwner:Landroid/content/UndoOwner;


# direct methods
.method public constructor <init>(Landroid/content/UndoOwner;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowMerge()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public abstract commit()V
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getOwner()Landroid/content/UndoOwner;
    .registers 2

    iget-object v0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    return-object v0
.end method

.method public getOwnerData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDATA;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/UndoOperation;->mOwner:Landroid/content/UndoOwner;

    invoke-virtual {v0}, Landroid/content/UndoOwner;->getData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public matchOwner(Landroid/content/UndoOwner;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwner()Landroid/content/UndoOwner;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract redo()V
.end method

.method public abstract undo()V
.end method
