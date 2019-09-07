.class public Lcom/bumptech/glide/load/model/f;
.super Ljava/lang/Object;
.source "ByteBufferFileLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/f$a;,
        Lcom/bumptech/glide/load/model/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/t<",
        "Ljava/io/File;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ByteBufferFileLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/model/t$a<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/bumptech/glide/load/model/t$a;

    new-instance p2, Lcom/bumptech/glide/e/d;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/e/d;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lcom/bumptech/glide/load/model/f$a;

    invoke-direct {p3, p1}, Lcom/bumptech/glide/load/model/f$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/model/t$a;-><init>(Lcom/bumptech/glide/load/c;Lcom/bumptech/glide/load/a/d;)V

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/f;->a(Ljava/io/File;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/model/t$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/f;->f(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public f(Ljava/io/File;)Z
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
