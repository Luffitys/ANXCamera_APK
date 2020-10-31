.class public abstract Lcom/miui/internal/variable/api/AbstractExtension;
.super Ljava/lang/Object;
.source "AbstractExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mExtension:Lcom/miui/internal/variable/api/Overridable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/internal/variable/api/Overridable<",
            "TI;>;"
        }
    .end annotation
.end field

.field private mOriginal:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindOriginal(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mOriginal:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/miui/internal/variable/api/Overridable;->bind(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public getExtension()Lcom/miui/internal/variable/api/Overridable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/internal/variable/api/Overridable<",
            "TI;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    return-object v0
.end method

.method public setExtension(Lcom/miui/internal/variable/api/Overridable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/internal/variable/api/Overridable<",
            "TI;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mExtension:Lcom/miui/internal/variable/api/Overridable;

    iget-object v0, p0, Lcom/miui/internal/variable/api/AbstractExtension;->mOriginal:Ljava/lang/Object;

    if-eqz v0, :cond_9

    invoke-interface {p1, v0}, Lcom/miui/internal/variable/api/Overridable;->bind(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method
