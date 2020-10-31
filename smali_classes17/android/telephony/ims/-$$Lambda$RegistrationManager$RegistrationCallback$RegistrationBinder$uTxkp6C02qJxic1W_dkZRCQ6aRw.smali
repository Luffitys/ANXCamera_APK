.class public final synthetic Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$uTxkp6C02qJxic1W_dkZRCQ6aRw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$uTxkp6C02qJxic1W_dkZRCQ6aRw;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput p2, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$uTxkp6C02qJxic1W_dkZRCQ6aRw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$uTxkp6C02qJxic1W_dkZRCQ6aRw;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget v1, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$uTxkp6C02qJxic1W_dkZRCQ6aRw;->f$1:I

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onRegistered$0$RegistrationManager$RegistrationCallback$RegistrationBinder(I)V

    return-void
.end method
