.class public final synthetic Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/provider/FontsContract$FontRequestCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iput p2, p0, Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;->f$0:Landroid/provider/FontsContract$FontRequestCallback;

    iget v1, p0, Landroid/provider/-$$Lambda$FontsContract$rvEOORTXb3mMYTLkoH9nlHQr9Iw;->f$1:I

    invoke-static {v0, v1}, Landroid/provider/FontsContract;->lambda$requestFonts$9(Landroid/provider/FontsContract$FontRequestCallback;I)V

    return-void
.end method
