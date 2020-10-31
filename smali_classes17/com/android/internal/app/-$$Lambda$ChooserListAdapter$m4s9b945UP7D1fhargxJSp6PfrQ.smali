.class public final synthetic Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$m4s9b945UP7D1fhargxJSp6PfrQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$m4s9b945UP7D1fhargxJSp6PfrQ;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/-$$Lambda$ChooserListAdapter$m4s9b945UP7D1fhargxJSp6PfrQ;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    check-cast p2, Lcom/android/internal/app/chooser/ChooserTargetInfo;

    invoke-static {v0, p1, p2}, Lcom/android/internal/app/ChooserListAdapter;->lambda$rankTargetsWithinComponent$1(Ljava/util/Map;Lcom/android/internal/app/chooser/ChooserTargetInfo;Lcom/android/internal/app/chooser/ChooserTargetInfo;)I

    move-result p1

    return p1
.end method
