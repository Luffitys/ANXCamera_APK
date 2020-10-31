.class public final synthetic Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$DataShareReadAdapterDelegate$uTXwFANtzR3r3Y1Oa0xuBOje1MM;
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

    iput-object p1, p0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$DataShareReadAdapterDelegate$uTXwFANtzR3r3Y1Oa0xuBOje1MM;->f$0:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/service/contentcapture/-$$Lambda$ContentCaptureService$DataShareReadAdapterDelegate$uTXwFANtzR3r3Y1Oa0xuBOje1MM;->f$0:Landroid/os/ParcelFileDescriptor;

    check-cast p1, Landroid/service/contentcapture/DataShareReadAdapter;

    invoke-static {v0, p1}, Landroid/service/contentcapture/ContentCaptureService$DataShareReadAdapterDelegate;->lambda$start$0(Landroid/os/ParcelFileDescriptor;Landroid/service/contentcapture/DataShareReadAdapter;)V

    return-void
.end method
