.class public abstract Lmiui/util/FileAccessable$AbstractFileAccessable;
.super Ljava/lang/Object;
.source "FileAccessable.java"

# interfaces
.implements Lmiui/util/FileAccessable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/FileAccessable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFileAccessable"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDirectory()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->isFile()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public list(Lmiui/util/FileAccessable$FileAccessableFilter;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/util/FileAccessable$FileAccessableFilter;",
            ")",
            "Ljava/util/List<",
            "Lmiui/util/FileAccessable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->list()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lmiui/util/FileAccessable$AbstractFileAccessable;->list()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v1, 0x0

    return-object v1

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/FileAccessable;

    invoke-interface {p1, v3}, Lmiui/util/FileAccessable$FileAccessableFilter;->accept(Lmiui/util/FileAccessable;)Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    goto :goto_18

    :cond_2e
    return-object v1
.end method
