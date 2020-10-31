.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$v_PIWmeGJonXeEm_sUOqaB17atA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$v_PIWmeGJonXeEm_sUOqaB17atA;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$v_PIWmeGJonXeEm_sUOqaB17atA;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    check-cast p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$fillAllServiceTargets$7$ChooserListAdapter(Lcom/android/internal/app/chooser/ChooserTargetInfo;)V

    return-void
.end method
