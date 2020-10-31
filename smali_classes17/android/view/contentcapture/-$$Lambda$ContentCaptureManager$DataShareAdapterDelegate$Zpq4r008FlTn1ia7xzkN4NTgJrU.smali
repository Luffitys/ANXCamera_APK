.class public final synthetic Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$DataShareAdapterDelegate$Zpq4r008FlTn1ia7xzkN4NTgJrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$DataShareAdapterDelegate$Zpq4r008FlTn1ia7xzkN4NTgJrU;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$DataShareAdapterDelegate$Zpq4r008FlTn1ia7xzkN4NTgJrU;->f$0:I

    check-cast p1, Landroid/view/contentcapture/DataShareWriteAdapter;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->lambda$error$1(ILandroid/view/contentcapture/DataShareWriteAdapter;)V

    return-void
.end method
