.class public final synthetic Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$DataShareAdapterDelegate$q3ba3mvm7p4FcLLvlJAkgyzoYHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$DataShareAdapterDelegate$q3ba3mvm7p4FcLLvlJAkgyzoYHc;->f$0:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/contentcapture/-$$Lambda$ContentCaptureManager$DataShareAdapterDelegate$q3ba3mvm7p4FcLLvlJAkgyzoYHc;->f$0:Landroid/os/ParcelFileDescriptor;

    check-cast p1, Landroid/view/contentcapture/DataShareWriteAdapter;

    invoke-static {v0, p1}, Landroid/view/contentcapture/ContentCaptureManager$DataShareAdapterDelegate;->lambda$write$0(Landroid/os/ParcelFileDescriptor;Landroid/view/contentcapture/DataShareWriteAdapter;)V

    return-void
.end method
