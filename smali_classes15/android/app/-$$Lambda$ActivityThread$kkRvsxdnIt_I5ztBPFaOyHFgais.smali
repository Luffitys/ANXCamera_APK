.class public final synthetic Landroid/app/-$$Lambda$ActivityThread$kkRvsxdnIt_I5ztBPFaOyHFgais;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/ActivityThread$ActivityClientRecord;

.field public final synthetic f$1:Landroid/os/RemoteCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$ActivityThread$kkRvsxdnIt_I5ztBPFaOyHFgais;->f$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iput-object p2, p0, Landroid/app/-$$Lambda$ActivityThread$kkRvsxdnIt_I5ztBPFaOyHFgais;->f$1:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Landroid/app/-$$Lambda$ActivityThread$kkRvsxdnIt_I5ztBPFaOyHFgais;->f$0:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, p0, Landroid/app/-$$Lambda$ActivityThread$kkRvsxdnIt_I5ztBPFaOyHFgais;->f$1:Landroid/os/RemoteCallback;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->lambda$handleRequestDirectActions$2(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/os/RemoteCallback;Ljava/util/List;)V

    return-void
.end method
