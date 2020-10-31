.class public final synthetic Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;ILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iput p2, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;->f$1:I

    iput-object p3, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;->f$2:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;->f$0:Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;

    iget v1, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;->f$1:I

    iget-object v2, p0, Landroid/telephony/ims/-$$Lambda$RegistrationManager$RegistrationCallback$RegistrationBinder$fgbmOxWK5ZyS5zNpLgTSXknOOJ4;->f$2:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/RegistrationManager$RegistrationCallback$RegistrationBinder;->lambda$onTechnologyChangeFailed$3$RegistrationManager$RegistrationCallback$RegistrationBinder(ILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
