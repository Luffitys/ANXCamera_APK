.class public final synthetic Landroid/telephony/-$$Lambda$TelephonyManager$1$scMPky6lOZrCjFC3d4STbtLfpHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$scMPky6lOZrCjFC3d4STbtLfpHE;->f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$scMPky6lOZrCjFC3d4STbtLfpHE;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$scMPky6lOZrCjFC3d4STbtLfpHE;->f$0:Landroid/telephony/TelephonyManager$CellInfoCallback;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$TelephonyManager$1$scMPky6lOZrCjFC3d4STbtLfpHE;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/telephony/TelephonyManager$1;->lambda$onCellInfo$0(Landroid/telephony/TelephonyManager$CellInfoCallback;Ljava/util/List;)V

    return-void
.end method
