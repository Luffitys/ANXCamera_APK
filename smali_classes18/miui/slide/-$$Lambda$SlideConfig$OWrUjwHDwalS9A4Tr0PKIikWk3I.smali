.class public final synthetic Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lmiui/slide/SlideConfig;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lmiui/slide/SlideConfig$TouchEventConfig;


# direct methods
.method public synthetic constructor <init>(Lmiui/slide/SlideConfig;Landroid/view/View;ZLmiui/slide/SlideConfig$TouchEventConfig;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$0:Lmiui/slide/SlideConfig;

    iput-object p2, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$1:Landroid/view/View;

    iput-boolean p3, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$2:Z

    iput-object p4, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$3:Lmiui/slide/SlideConfig$TouchEventConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$0:Lmiui/slide/SlideConfig;

    iget-object v1, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$1:Landroid/view/View;

    iget-boolean v2, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$2:Z

    iget-object v3, p0, Lmiui/slide/-$$Lambda$SlideConfig$OWrUjwHDwalS9A4Tr0PKIikWk3I;->f$3:Lmiui/slide/SlideConfig$TouchEventConfig;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/slide/SlideConfig;->lambda$tryGotoTarget$0$SlideConfig(Landroid/view/View;ZLmiui/slide/SlideConfig$TouchEventConfig;)V

    return-void
.end method
