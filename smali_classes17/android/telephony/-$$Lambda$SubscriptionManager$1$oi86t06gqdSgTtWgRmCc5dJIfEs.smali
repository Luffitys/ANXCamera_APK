.class public final synthetic Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;->f$0:Ljava/util/function/Consumer;

    iput p2, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;->f$0:Ljava/util/function/Consumer;

    iget v1, p0, Landroid/telephony/-$$Lambda$SubscriptionManager$1$oi86t06gqdSgTtWgRmCc5dJIfEs;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager$1;->lambda$onComplete$0(Ljava/util/function/Consumer;I)V

    return-void
.end method
