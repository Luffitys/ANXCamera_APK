.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$o8IrDQdNVZiY1r8voMZ7aMkP4oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$o8IrDQdNVZiY1r8voMZ7aMkP4oc;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$o8IrDQdNVZiY1r8voMZ7aMkP4oc;->f$0:Lcom/android/internal/app/ChooserListAdapter;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$fillAllServiceTargets$8$ChooserListAdapter(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
