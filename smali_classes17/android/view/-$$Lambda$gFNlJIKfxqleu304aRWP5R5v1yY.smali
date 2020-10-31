.class public final synthetic Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Landroid/view/inspector/IntFlagMapping;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inspector/IntFlagMapping;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;->f$0:Landroid/view/inspector/IntFlagMapping;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/view/-$$Lambda$gFNlJIKfxqleu304aRWP5R5v1yY;->f$0:Landroid/view/inspector/IntFlagMapping;

    invoke-virtual {v0, p1}, Landroid/view/inspector/IntFlagMapping;->get(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
