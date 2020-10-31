.class public final synthetic Landroid/provider/-$$Lambda$Settings$NameValueCache$cLX_nUBDGp9SYpFxrABk-2ceeMI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/provider/Settings$NameValueCache;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/Settings$NameValueCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$$Lambda$Settings$NameValueCache$cLX_nUBDGp9SYpFxrABk-2ceeMI;->f$0:Landroid/provider/Settings$NameValueCache;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/provider/-$$Lambda$Settings$NameValueCache$cLX_nUBDGp9SYpFxrABk-2ceeMI;->f$0:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->lambda$getStringsForPrefix$1$Settings$NameValueCache()V

    return-void
.end method
