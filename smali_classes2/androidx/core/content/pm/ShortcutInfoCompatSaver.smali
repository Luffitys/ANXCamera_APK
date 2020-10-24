.class public abstract Landroidx/core/content/pm/ShortcutInfoCompatSaver;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addShortcuts(Ljava/util/List;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation
.end method

.method public getShortcuts()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public abstract removeAllShortcuts()Ljava/lang/Object;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation
.end method

.method public abstract removeShortcuts(Ljava/util/List;)Ljava/lang/Object;
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation
.end method
