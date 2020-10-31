.class public final synthetic Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/IntentForwarderActivity;

.field public final synthetic f$1:Landroid/content/Intent;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/Intent;

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/IntentForwarderActivity;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;II)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iput-object p2, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$1:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$4:I

    iput p6, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$5:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$0:Lcom/android/internal/app/IntentForwarderActivity;

    iget-object v1, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$1:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$3:Landroid/content/Intent;

    iget v4, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$4:I

    iget v5, p0, Lcom/android/internal/app/-$$Lambda$IntentForwarderActivity$qydOPmABrxKUPHVYcot2pr1dEhM;->f$5:I

    move-object v6, p1

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IntentForwarderActivity;->lambda$onCreate$0$IntentForwarderActivity(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;IILandroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method
