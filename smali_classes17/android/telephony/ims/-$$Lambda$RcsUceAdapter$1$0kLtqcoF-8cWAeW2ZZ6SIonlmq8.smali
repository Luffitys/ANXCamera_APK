.class public final synthetic Landroid/telephony/ims/-$$Lambda$RcsUceAdapter$1$0kLtqcoF-8cWAeW2ZZ6SIonlmq8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RcsUceAdapter$1$0kLtqcoF-8cWAeW2ZZ6SIonlmq8;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iput p2, p0, Landroid/telephony/ims/-$$Lambda$RcsUceAdapter$1$0kLtqcoF-8cWAeW2ZZ6SIonlmq8;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RcsUceAdapter$1$0kLtqcoF-8cWAeW2ZZ6SIonlmq8;->f$0:Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;

    iget v1, p0, Landroid/telephony/ims/-$$Lambda$RcsUceAdapter$1$0kLtqcoF-8cWAeW2ZZ6SIonlmq8;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$1;->lambda$onError$1(Landroid/telephony/ims/RcsUceAdapter$CapabilitiesCallback;I)V

    return-void
.end method
