.class public final synthetic Lcom/android/internal/widget/-$$Lambda$ConversationLayout$BlJ8h2OIIfhaE4yvFY3mmLcanoA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/widget/CachingIconView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/widget/CachingIconView;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$BlJ8h2OIIfhaE4yvFY3mmLcanoA;->f$0:Lcom/android/internal/widget/CachingIconView;

    iput-boolean p2, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$BlJ8h2OIIfhaE4yvFY3mmLcanoA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$BlJ8h2OIIfhaE4yvFY3mmLcanoA;->f$0:Lcom/android/internal/widget/CachingIconView;

    iget-boolean v1, p0, Lcom/android/internal/widget/-$$Lambda$ConversationLayout$BlJ8h2OIIfhaE4yvFY3mmLcanoA;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->lambda$animateViewForceHidden$4(Lcom/android/internal/widget/CachingIconView;Z)V

    return-void
.end method
