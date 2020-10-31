.class Lmiui/telephony/phonenumber/TelocationProvider$3;
.super Ljava/lang/Object;
.source "TelocationProvider.java"

# interfaces
.implements Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/phonenumber/TelocationProvider;->initUniqIdLen8Numbers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/phonenumber/TelocationProvider;


# direct methods
.method constructor <init>(Lmiui/telephony/phonenumber/TelocationProvider;)V
    .registers 2

    iput-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider$3;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadRaw([Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_8} :catch_a

    move v0, v1

    goto :goto_b

    :catch_a
    move-exception v1

    :goto_b
    if-eqz v0, :cond_1a

    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider$3;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    # getter for: Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;
    invoke-static {v1}, Lmiui/telephony/phonenumber/TelocationProvider;->access$200(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1a
    return-void
.end method
