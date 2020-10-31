.class public Lmiui/yellowpage/YellowPage;
.super Ljava/lang/Object;
.source "YellowPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPage$Social;,
        Lmiui/yellowpage/YellowPage$Provider;,
        Lmiui/yellowpage/YellowPage$TagSocial;,
        Lmiui/yellowpage/YellowPage$TagCallMenuNIvr;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "YellowPage"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mAlias:Ljava/lang/String;

.field private mAuthIconName:Ljava/lang/String;

.field private mBrief:Ljava/lang/String;

.field private mCatId:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mCreditImg:Ljava/lang/String;

.field private mExtraData:Ljava/lang/String;

.field private mFirmUrl:Ljava/lang/String;

.field private mGallery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHotCatId:Ljava/lang/String;

.field private mHotSort:I

.field private mIsHot:Z

.field private mIsMasterPage:Z

.field private mIsPreset:Z

.field private mLatitude:Ljava/lang/String;

.field private mLocId:Ljava/lang/String;

.field private mLongitude:Ljava/lang/String;

.field private mMiId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPhones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoUrl:Ljava/lang/String;

.field private mPinyin:Ljava/lang/String;

.field private mProviderId:I

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private mSlogan:Ljava/lang/String;

.field private mSocials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceId:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mThumbnailUrl:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mYid:J


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmiui/yellowpage/YellowPage;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage;
    .registers 68

    move-object/from16 v1, p0

    const-string v0, "phone"

    const-string v2, "provider"

    :try_start_6
    const-string v3, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "sName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move v12, v5

    const-string v5, "sName_py"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    const-string v5, "aliasName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    const-string v5, "address"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    const-string v5, "site"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "firmUrl"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    const-string v9, "creditImg"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    const-string v9, "sourceUrl"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sourceId"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    const-string v10, "shInfo"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v5

    const-string v5, "hotCatId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    const-string v5, "hotSort"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v20, v5

    const-string v5, "catId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    const-string v5, "locId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    const-string v5, "longitude"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v5

    const-string v5, "latitude"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v5

    const-string v5, "miid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v25, v5

    const-string v5, "miSubId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v5

    const-string v5, "slogan"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v27, v5

    const-string v5, "authIcon"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    const-string v5, "sType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v29, v6

    const/4 v6, 0x2

    const/16 v30, 0x0

    move/from16 v31, v12

    const/4 v12, 0x1

    if-ne v5, v6, :cond_b8

    move v5, v12

    goto :goto_ba

    :cond_b8
    move/from16 v5, v30

    :goto_ba
    move v6, v5

    const-string v5, "hot"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_c5

    move v5, v12

    goto :goto_c7

    :cond_c5
    move/from16 v5, v30

    :goto_c7
    const-string v12, "buildIn"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v32, v8

    const/4 v8, 0x1

    if-ne v12, v8, :cond_d4

    move v12, v8

    goto :goto_d6

    :cond_d4
    move/from16 v12, v30

    :goto_d6
    const-string v8, "callMenu"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/16 v17, 0x0

    if-eqz v8, :cond_234

    const/16 v33, 0x0

    move/from16 v34, v12

    move/from16 v12, v33

    move-object/from16 v33, v17

    :goto_ec
    move/from16 v35, v5

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v12, v5, :cond_200

    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v36, v10

    move-object/from16 v10, v17

    move-object/from16 v37, v0

    const-string v0, "norPhone"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v38, v11

    move-object v11, v0

    const-string v0, "contactName"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v39, v9

    move-object v9, v0

    const-string v0, "contactName_py"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v0, "t9rank"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v40

    move-wide/from16 v42, v40

    const-string v0, "atdCatId"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v40, v6

    const-string v6, "count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v44, v14

    move v14, v6

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v41, v6

    const-string v6, "flag"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    move/from16 v45, v6

    const-string v6, "hide"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_14b

    const/4 v6, 0x1

    goto :goto_14d

    :cond_14b
    move/from16 v6, v30

    :goto_14d
    move-object/from16 v46, v15

    move v15, v6

    if-nez v33, :cond_15a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v33, v6

    goto :goto_15c

    :cond_15a
    move-object/from16 v6, v33

    :goto_15c
    new-instance v33, Lmiui/yellowpage/YellowPagePhone;

    const/16 v47, 0x1

    move-object/from16 v49, v16

    move-object/from16 v50, v19

    move/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v53, v22

    move-object/from16 v54, v23

    move-object/from16 v55, v24

    move-object/from16 v48, v25

    move-object/from16 v56, v27

    move-object/from16 v57, v28

    move/from16 v58, v35

    move-object/from16 v19, v5

    move-object/from16 v5, v33

    move-object/from16 v64, v6

    move-object/from16 v60, v7

    move-object/from16 v59, v29

    move/from16 v61, v40

    move/from16 v62, v41

    move/from16 v63, v45

    move-wide v6, v3

    move-object/from16 v21, v8

    move-object/from16 v20, v32

    const/16 v16, 0x1

    move-object v8, v13

    move/from16 v23, v12

    move/from16 v24, v16

    move/from16 v22, v31

    move/from16 v65, v34

    move/from16 v12, v47

    move-object/from16 v66, v13

    move/from16 v13, v22

    move-object/from16 v16, v20

    invoke-direct/range {v5 .. v18}, Lmiui/yellowpage/YellowPagePhone;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v33

    move-wide/from16 v6, v42

    invoke-virtual {v5, v6, v7}, Lmiui/yellowpage/YellowPagePhone;->setT9Rank(J)Lmiui/yellowpage/YellowPagePhone;

    move-object/from16 v8, v56

    invoke-virtual {v5, v8}, Lmiui/yellowpage/YellowPagePhone;->setRawSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v5, v0}, Lmiui/yellowpage/YellowPagePhone;->setCid(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v12, v63

    invoke-virtual {v5, v12}, Lmiui/yellowpage/YellowPagePhone;->setFlag(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v13, v62

    invoke-virtual {v5, v13}, Lmiui/yellowpage/YellowPagePhone;->setAntispamProviderId(I)Lmiui/yellowpage/YellowPagePhone;

    move/from16 v16, v0

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Lmiui/yellowpage/YellowPagePhone;->setCreditImg(Ljava/lang/String;)V

    move-wide/from16 v27, v6

    move-object/from16 v6, v64

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v12, v23, 0x1

    move-object v14, v0

    move-object/from16 v33, v6

    move-object/from16 v27, v8

    move-object/from16 v32, v20

    move-object/from16 v8, v21

    move/from16 v31, v22

    move-object/from16 v10, v36

    move-object/from16 v0, v37

    move-object/from16 v11, v38

    move-object/from16 v9, v39

    move-object/from16 v15, v46

    move-object/from16 v25, v48

    move-object/from16 v16, v49

    move-object/from16 v19, v50

    move/from16 v20, v51

    move-object/from16 v21, v52

    move-object/from16 v22, v53

    move-object/from16 v23, v54

    move-object/from16 v24, v55

    move-object/from16 v28, v57

    move/from16 v5, v58

    move-object/from16 v29, v59

    move-object/from16 v7, v60

    move/from16 v6, v61

    move/from16 v34, v65

    move-object/from16 v13, v66

    goto/16 :goto_ec

    :cond_200
    move/from16 v61, v6

    move-object/from16 v60, v7

    move-object/from16 v39, v9

    move-object/from16 v36, v10

    move-object/from16 v38, v11

    move-object/from16 v66, v13

    move-object v0, v14

    move-object/from16 v46, v15

    move-object/from16 v49, v16

    move-object/from16 v50, v19

    move/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v53, v22

    move-object/from16 v54, v23

    move-object/from16 v55, v24

    move-object/from16 v48, v25

    move-object/from16 v57, v28

    move-object/from16 v59, v29

    move/from16 v22, v31

    move-object/from16 v20, v32

    move/from16 v65, v34

    move/from16 v58, v35

    move-object/from16 v21, v8

    move/from16 v23, v12

    move-object/from16 v8, v27

    move-object/from16 v5, v33

    goto :goto_265

    :cond_234
    move/from16 v58, v5

    move/from16 v61, v6

    move-object/from16 v60, v7

    move-object/from16 v39, v9

    move-object/from16 v36, v10

    move-object/from16 v38, v11

    move/from16 v65, v12

    move-object/from16 v66, v13

    move-object v0, v14

    move-object/from16 v46, v15

    move-object/from16 v49, v16

    move-object/from16 v50, v19

    move/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v53, v22

    move-object/from16 v54, v23

    move-object/from16 v55, v24

    move-object/from16 v48, v25

    move-object/from16 v57, v28

    move-object/from16 v59, v29

    move/from16 v22, v31

    move-object/from16 v20, v32

    move-object/from16 v21, v8

    move-object/from16 v8, v27

    move-object/from16 v5, v17

    :goto_265
    const-string v6, "snsInfo"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2a1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2a1

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v9

    const/4 v9, 0x0

    :goto_27b
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_2a1

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "url"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Lmiui/yellowpage/YellowPage$Social;

    invoke-direct {v14, v11, v12, v13}, Lmiui/yellowpage/YellowPage$Social;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v9, v9, 0x1

    goto :goto_27b

    :cond_2a1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "providerList"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_2c5

    const/4 v10, 0x0

    :goto_2af
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_2c5

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-static {v11}, Lmiui/yellowpage/YellowPage$Provider;->fromJson(Lorg/json/JSONObject;)Lmiui/yellowpage/YellowPage$Provider;

    move-result-object v11

    if-eqz v11, :cond_2c2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2af

    :cond_2c5
    const-string v10, "photo"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "thumbnail"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "extraData"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lmiui/yellowpage/YellowPage;

    invoke-direct {v13}, Lmiui/yellowpage/YellowPage;-><init>()V

    invoke-virtual {v13, v3, v4}, Lmiui/yellowpage/YellowPage;->setId(J)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v14, v66

    invoke-virtual {v13, v14}, Lmiui/yellowpage/YellowPage;->setName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v15, v20

    invoke-virtual {v13, v15}, Lmiui/yellowpage/YellowPage;->setPinyin(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v1, v36

    invoke-virtual {v13, v1}, Lmiui/yellowpage/YellowPage;->setBrief(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v36, v1

    move-object/from16 v1, v59

    invoke-virtual {v13, v1}, Lmiui/yellowpage/YellowPage;->setAlias(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v59, v1

    move-object/from16 v1, v60

    invoke-virtual {v13, v1}, Lmiui/yellowpage/YellowPage;->setAddress(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    invoke-virtual {v13, v5}, Lmiui/yellowpage/YellowPage;->setPhones(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    invoke-virtual {v13, v7}, Lmiui/yellowpage/YellowPage;->setSocials(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    invoke-virtual {v13, v11}, Lmiui/yellowpage/YellowPage;->setThumbnailName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    invoke-virtual {v13, v10}, Lmiui/yellowpage/YellowPage;->setPhotoName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v60, v1

    move/from16 v1, v22

    invoke-virtual {v13, v1}, Lmiui/yellowpage/YellowPage;->setProviderId(I)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move/from16 v22, v1

    move-object/from16 v1, v49

    invoke-virtual {v13, v1}, Lmiui/yellowpage/YellowPage;->setUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v49, v1

    move-object/from16 v1, v46

    invoke-virtual {v13, v1}, Lmiui/yellowpage/YellowPage;->setFirmUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setCreditImg(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v44, v0

    move-object/from16 v0, v39

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setSourceId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v38, v0

    move/from16 v0, v61

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setIsMasterPage(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move/from16 v61, v0

    move/from16 v0, v65

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setIsPreset(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move/from16 v65, v0

    move/from16 v0, v58

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setIsHot(Z)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move/from16 v58, v0

    move-object/from16 v0, v50

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setHotCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v50, v0

    move/from16 v0, v51

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setHotSort(I)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move/from16 v51, v0

    move-object/from16 v0, v52

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v52, v0

    move-object/from16 v0, v53

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setLocId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v53, v0

    move-object/from16 v0, v54

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setLongitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v54, v0

    move-object/from16 v0, v55

    invoke-virtual {v13, v0}, Lmiui/yellowpage/YellowPage;->setLatitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v13

    move-object/from16 v55, v0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Lmiui/yellowpage/YellowPage;->setContent(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    invoke-virtual {v0, v8}, Lmiui/yellowpage/YellowPage;->setSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiui/yellowpage/YellowPage;->setProviderList(Ljava/util/List;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3a5

    move-object/from16 v46, v1

    move-object/from16 v1, v26

    move-object/from16 v13, v48

    goto :goto_3c1

    :cond_3a5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v46, v1

    move-object/from16 v1, v48

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v48, v1

    const-string v1, "/"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v26

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_3c1
    invoke-virtual {v0, v13}, Lmiui/yellowpage/YellowPage;->setMiId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    move-object/from16 v13, v57

    invoke-virtual {v0, v13}, Lmiui/yellowpage/YellowPage;->setAuthIconName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0

    invoke-virtual {v0, v12}, Lmiui/yellowpage/YellowPage;->setExtraData(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;

    move-result-object v0
    :try_end_3cf
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_3cf} :catch_3d0

    return-object v0

    :catch_3d0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private setContent(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mContent:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthIconName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mAuthIconName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrief()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mBrief:Ljava/lang/String;

    return-object v0
.end method

.method public getCatId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mCatId:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditImg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mCreditImg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getFirmUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mFirmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGallery()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mGallery:Ljava/util/List;

    return-object v0
.end method

.method public getHotCatId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getHotSort()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPage;->mHotSort:I

    return v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lmiui/yellowpage/YellowPage;->mYid:J

    return-wide v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLocId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLocId:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getMiId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mMiId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneInfo(Landroid/content/Context;Ljava/lang/String;)Lmiui/yellowpage/YellowPagePhone;
    .registers 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p1, p2}, Lmiui/yellowpage/YellowPageUtils;->getNormalizedNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    if-eqz v2, :cond_2c

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/yellowpage/YellowPagePhone;

    invoke-virtual {v3}, Lmiui/yellowpage/YellowPagePhone;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2b

    return-object v3

    :cond_2b
    goto :goto_14

    :cond_2c
    return-object v1
.end method

.method public getPhones()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    return-object v0
.end method

.method public getPhoto()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhotoName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPinyin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mPinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getProviderId()I
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    return v0
.end method

.method public getProviderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mProviders:Ljava/util/List;

    return-object v0
.end method

.method public getProviderName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    invoke-static {p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getProvider(Landroid/content/Context;I)Lmiui/yellowpage/YellowPageProvider;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/yellowpage/YellowPageProvider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSlogan()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSlogan:Ljava/lang/String;

    return-object v0
.end method

.method public getSocials()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSocials:Ljava/util/List;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mSourceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbnailName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/yellowpage/YellowPage;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHot()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsHot:Z

    return v0
.end method

.method public isMasterPage()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsMasterPage:Z

    return v0
.end method

.method public isPreset()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/yellowpage/YellowPage;->mIsPreset:Z

    return v0
.end method

.method public isProviderMiui()Z
    .registers 2

    iget v0, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setAddress(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAlias:Ljava/lang/String;

    return-object p0
.end method

.method public setAuthIconName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mAuthIconName:Ljava/lang/String;

    return-object p0
.end method

.method public setBrief(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mBrief:Ljava/lang/String;

    return-object p0
.end method

.method public setCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mCatId:Ljava/lang/String;

    return-object p0
.end method

.method public setCreditImg(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mCreditImg:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraData(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mExtraData:Ljava/lang/String;

    return-object p0
.end method

.method public setFirmUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mFirmUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setGallery(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mGallery:Ljava/util/List;

    return-object p0
.end method

.method public setHotCatId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mHotCatId:Ljava/lang/String;

    return-object p0
.end method

.method public setHotSort(I)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPage;->mHotSort:I

    return-object p0
.end method

.method public setId(J)Lmiui/yellowpage/YellowPage;
    .registers 3

    iput-wide p1, p0, Lmiui/yellowpage/YellowPage;->mYid:J

    return-object p0
.end method

.method public setIsHot(Z)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsHot:Z

    return-object p0
.end method

.method public setIsMasterPage(Z)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsMasterPage:Z

    return-object p0
.end method

.method public setIsPreset(Z)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-boolean p1, p0, Lmiui/yellowpage/YellowPage;->mIsPreset:Z

    return-object p0
.end method

.method public setLatitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLatitude:Ljava/lang/String;

    return-object p0
.end method

.method public setLocId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLocId:Ljava/lang/String;

    return-object p0
.end method

.method public setLongitude(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mLongitude:Ljava/lang/String;

    return-object p0
.end method

.method public setMiId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mMiId:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setPhones(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPagePhone;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPhones:Ljava/util/List;

    return-object p0
.end method

.method public setPhotoName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPhotoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPinyin(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mPinyin:Ljava/lang/String;

    return-object p0
.end method

.method public setProviderId(I)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput p1, p0, Lmiui/yellowpage/YellowPage;->mProviderId:I

    return-object p0
.end method

.method public setProviderList(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Provider;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mProviders:Ljava/util/List;

    return-object p0
.end method

.method public setSlogan(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSlogan:Ljava/lang/String;

    return-object p0
.end method

.method public setSocials(Ljava/util/List;)Lmiui/yellowpage/YellowPage;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/yellowpage/YellowPage$Social;",
            ">;)",
            "Lmiui/yellowpage/YellowPage;"
        }
    .end annotation

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSocials:Ljava/util/List;

    return-object p0
.end method

.method public setSourceId(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setSourceUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mSourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setThumbnailName(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mThumbnailUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lmiui/yellowpage/YellowPage;
    .registers 2

    iput-object p1, p0, Lmiui/yellowpage/YellowPage;->mUrl:Ljava/lang/String;

    return-object p0
.end method
