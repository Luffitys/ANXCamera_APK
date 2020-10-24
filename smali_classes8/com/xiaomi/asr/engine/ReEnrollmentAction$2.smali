.class Lcom/xiaomi/asr/engine/ReEnrollmentAction$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;


# direct methods
.method constructor <init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$2;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/asr/engine/ReEnrollmentAction$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
