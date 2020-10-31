.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$rw63pg1aRKVr5dywa5h7kBoPmG4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$rw63pg1aRKVr5dywa5h7kBoPmG4;->f$0:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$rw63pg1aRKVr5dywa5h7kBoPmG4;->f$0:Landroid/content/ComponentName;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->lambda$parkTargetIntoMemoryForCts$4(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
