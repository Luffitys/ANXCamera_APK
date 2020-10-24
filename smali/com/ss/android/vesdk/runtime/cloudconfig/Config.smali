.class public Lcom/ss/android/vesdk/runtime/cloudconfig/Config;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TYPE_FLOAT:I = 0x1

.field public static final TYPE_INT:I


# instance fields
.field public final defaultValue:Ljava/lang/Object;

.field public final key:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/Config;->key:Ljava/lang/String;

    iput p2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/Config;->type:I

    iput-object p3, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/Config;->defaultValue:Ljava/lang/Object;

    return-void
.end method
